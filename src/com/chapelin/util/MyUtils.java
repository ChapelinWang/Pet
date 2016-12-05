package com.chapelin.util;

import java.util.UUID;

public class MyUtils {
	public static String uuid(){
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
}
