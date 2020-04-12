package com.ssm.po;
	
public class CheckTextResult {
	 private long log_id;
	    private Result result;
	    public void setLog_id(long log_id) {
	        this.log_id = log_id;
	    }
	    public long getLog_id() {
	        return log_id;
	    }
	 
	    public void setResult(Result result) {
	        this.result = result;
	    }
	    public Result getResult() {
	        return result;
	    }
		@Override
		public String toString() {
			return "CheckTextResult [log_id=" + log_id + ", result=" + result + "]";
		}
	    
}
