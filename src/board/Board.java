package board;

public class Board {
	// 게시글 시퀀스 id
		private int mid;
		
		// 게시글 작성자
		private String cid;
		
		// 게시글 제목
		private String ctitle;
				
		// 게시글 내용
		private String cmsg;
		
		// 게시글 작성일, 시간
		private String cdate;
		

		public int getMid() {
			return mid;
		}

		public void setMid(int mid) {
			this.mid = mid;
		}

		public String getCmsg() {
			return cmsg;
		}

		public void setCmsg(String cmsg) {
			this.cmsg = cmsg;
		}
		public String getCtitle() {
			return ctitle;
		}

		public void setCtitle(String ctitle) {
			this.ctitle = ctitle;
		}

		public String getCdate() {
			return cdate;
		}

		public void setCdate(String cdate) {
			this.cdate = cdate;
		}

		public String getCid() {
			return cid;
		}
		public void setCid(String cid) {
			this.cid = cid;
		}
}
