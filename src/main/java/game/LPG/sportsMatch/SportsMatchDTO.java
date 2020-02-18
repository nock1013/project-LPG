package game.LPG.sportsMatch;

import java.sql.Date;

public class SportsMatchDTO {
	private String mchNo;
	private String sportsNo;
	private String mchName;
	private String mchDate;
	private String mchDateStart;
	private String mchDateEnd;
	private String mchPlay;
	private String mchGrd;
	private String mchPrice;
	private String mchUrgent;
	private String mchContent;
	private String mchGender;
	private String mchShoes;
	private String mchAbil;
	private String mchType;
	/*	team DTO */
	private String teamNo;
	private String teamName;
	private String teamEmblem;
	/*	teamMember - tmgrade*/
	private String tmGrade;
	/*	ground DTO */
	private String grdName;
	private String grdArea;
	private String grdAddr;
	
	public SportsMatchDTO() {
		
	}

	public SportsMatchDTO(String mchNo, String sportsNo, String mchName, String mchDate, String mchDateStart,
			String mchDateEnd, String mchPlay, String mchGrd, String mchPrice, String mchUrgent, String mchContent,
			String mchGender, String mchShoes, String mchAbil, String mchType, String teamNo, String teamName,
			String teamEmblem, String tmGrade, String grdName, String grdArea, String grdAddr) {
		super();
		this.mchNo = mchNo;
		this.sportsNo = sportsNo;
		this.mchName = mchName;
		this.mchDate = mchDate;
		this.mchDateStart = mchDateStart;
		this.mchDateEnd = mchDateEnd;
		this.mchPlay = mchPlay;
		this.mchGrd = mchGrd;
		this.mchPrice = mchPrice;
		this.mchUrgent = mchUrgent;
		this.mchContent = mchContent;
		this.mchGender = mchGender;
		this.mchShoes = mchShoes;
		this.mchAbil = mchAbil;
		this.mchType = mchType;
		this.teamNo = teamNo;
		this.teamName = teamName;
		this.teamEmblem = teamEmblem;
		this.tmGrade = tmGrade;
		this.grdName = grdName;
		this.grdArea = grdArea;
		this.grdAddr = grdAddr;
	}
	
	@Override
	public String toString() {
		return "SportsMatchDTO [mchNo=" + mchNo + ", sportsNo=" + sportsNo + ", mchName=" + mchName + ", mchDate="
				+ mchDate + ", mchDateStart=" + mchDateStart + ", mchDateEnd=" + mchDateEnd + ", mchPlay=" + mchPlay
				+ ", mchGrd=" + mchGrd + ", mchPrice=" + mchPrice + ", mchUrgent=" + mchUrgent + ", mchContent="
				+ mchContent + ", mchGender=" + mchGender + ", mchShoes=" + mchShoes + ", mchAbil=" + mchAbil
				+ ", mchType=" + mchType + ", teamNo=" + teamNo + ", teamName=" + teamName + ", teamEmblem="
				+ teamEmblem + ", tmGrade=" + tmGrade + ", grdName=" + grdName + ", grdArea=" + grdArea + ", grdAddr="
				+ grdAddr + "]";
	}

	public String getMchNo() {
		return mchNo;
	}

	public void setMchNo(String mchNo) {
		this.mchNo = mchNo;
	}

	public String getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(String sportsNo) {
		this.sportsNo = sportsNo;
	}

	public String getMchName() {
		return mchName;
	}

	public void setMchName(String mchName) {
		this.mchName = mchName;
	}

	public String getMchDate() {
		return mchDate;
	}

	public void setMchDate(String mchDate) {
		this.mchDate = mchDate;
	}

	public String getMchDateStart() {
		return mchDateStart;
	}

	public void setMchDateStart(String mchDateStart) {
		this.mchDateStart = mchDateStart;
	}

	public String getMchDateEnd() {
		return mchDateEnd;
	}

	public void setMchDateEnd(String mchDateEnd) {
		this.mchDateEnd = mchDateEnd;
	}

	public String getMchPlay() {
		return mchPlay;
	}

	public void setMchPlay(String mchPlay) {
		this.mchPlay = mchPlay;
	}

	public String getMchGrd() {
		return mchGrd;
	}

	public void setMchGrd(String mchGrd) {
		this.mchGrd = mchGrd;
	}

	public String getMchPrice() {
		return mchPrice;
	}

	public void setMchPrice(String mchPrice) {
		this.mchPrice = mchPrice;
	}

	public String getMchUrgent() {
		return mchUrgent;
	}

	public void setMchUrgent(String mchUrgent) {
		this.mchUrgent = mchUrgent;
	}

	public String getMchContent() {
		return mchContent;
	}

	public void setMchContent(String mchContent) {
		this.mchContent = mchContent;
	}

	public String getMchGender() {
		return mchGender;
	}

	public void setMchGender(String mchGender) {
		this.mchGender = mchGender;
	}

	public String getMchShoes() {
		return mchShoes;
	}

	public void setMchShoes(String mchShoes) {
		this.mchShoes = mchShoes;
	}

	public String getMchAbil() {
		return mchAbil;
	}

	public void setMchAbil(String mchAbil) {
		this.mchAbil = mchAbil;
	}

	public String getMchType() {
		return mchType;
	}

	public void setMchType(String mchType) {
		this.mchType = mchType;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getTeamEmblem() {
		return teamEmblem;
	}

	public void setTeamEmblem(String teamEmblem) {
		this.teamEmblem = teamEmblem;
	}

	public String getTmGrade() {
		return tmGrade;
	}

	public void setTmGrade(String tmGrade) {
		this.tmGrade = tmGrade;
	}

	public String getGrdName() {
		return grdName;
	}

	public void setGrdName(String grdName) {
		this.grdName = grdName;
	}

	public String getGrdArea() {
		return grdArea;
	}

	public void setGrdArea(String grdArea) {
		this.grdArea = grdArea;
	}

	public String getGrdAddr() {
		return grdAddr;
	}

	public void setGrdAddr(String grdAddr) {
		this.grdAddr = grdAddr;
	}

	public String getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(String teamNo) {
		this.teamNo = teamNo;
	}

	
	
}

