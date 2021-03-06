/*
 * Michael M. Nguyen
 */
package com.getcake.geo.nginxhandler;

/**
 *
 */

import static nginx.clojure.MiniConstants.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.StringTokenizer;

import org.apache.log4j.*;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.getcake.geo.controller.GeoController;
import com.getcake.geo.model.GeoInfo;
import com.getcake.geo.model.LoadStatistics;
import com.getcake.util.CakeCommonUtil;

import nginx.clojure.java.ArrayMap;
import nginx.clojure.java.NginxJavaRingHandler;

public  class GeoDataVersionHandler implements NginxJavaRingHandler {

		public Object [] retObjs;
		static int invokeCount = 0, constructorCount = 0;
		
		private static final Logger logger = Logger.getLogger(GeoDataVersionHandler.class);
		
    	private GeoController geoController;
		
		public GeoDataVersionHandler () {			
		}

	    public static void main(String[] args) {
	    	GeoDataVersionHandler app = new GeoDataVersionHandler ();
		}
		
        // @Override
        public Object[] invoke(Map<String, Object> request) {
        	String query_string, ipAddress;
    		StringTokenizer strTokenizer;
        	GeoInfo geoInfo;
        	LoadStatistics loadStatistics;
    		FileInputStream propFileInputStream;
    		File tmpFile;
        	InputStream input;
    		FileInputStream fileInputStream;
    		String line;
    		 Object[] retObjs;
    		 
        	try {
                return new Object[] { 
                    NGX_HTTP_OK, 
                    ArrayMap.create(CONTENT_TYPE, "text/plain"), 
                    GeoIPLookupHandler.geoController.getGeoDataVersion()                        		
                    };
                
        	} catch (Throwable exc) {
        		logger.error("", exc);
                return new Object[] { 
                		NGX_HTTP_INTERNAL_SERVER_ERROR, 
                        ArrayMap.create(CONTENT_TYPE, "text/plain"),
                        CakeCommonUtil.convertExceptionToString (exc) };        		
        	}
        }
    }