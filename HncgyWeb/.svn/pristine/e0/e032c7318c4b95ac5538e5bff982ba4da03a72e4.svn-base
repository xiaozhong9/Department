package com.ssm.test;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.util.DigestUtils;

public class MD5Test {
	public static void main(String[] args) throws NoSuchAlgorithmException {
		String md5Password = DigestUtils.md5DigestAsHex("root".getBytes());
		String md5Password1 = DigestUtils.md5DigestAsHex("root".getBytes());
		System.out.println(md5Password);
		System.out.println(md5Password1);
		System.out.println(md5Password.equals(md5Password1));
		System.out.println(md5Password==md5Password1);
	}
}
