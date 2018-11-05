package com.app.fscolle.componet;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class CustomServletRequestListener implements ServletRequestListener {

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		// リクエスト開始時の処理を行う。
		// (実装は省略)
	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		// リクエスト終了時の処理を行う。
		// (実装は省略)
	}

}