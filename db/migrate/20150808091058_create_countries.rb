class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
    	t.integer :AE, :default=>0, :limit=>100
			t.integer :AF, :default=>0, :limit=>100
			t.integer :AL, :default=>0, :limit=>100
			t.integer :AM, :default=>0, :limit=>100
			t.integer :AO, :default=>0, :limit=>100
			t.integer :AR, :default=>0, :limit=>100
			t.integer :AT, :default=>0, :limit=>100
			t.integer :AU, :default=>0, :limit=>100
			t.integer :AZ, :default=>0, :limit=>100
			t.integer :BA, :default=>0, :limit=>100
			t.integer :BD, :default=>0, :limit=>100
			t.integer :BE, :default=>0, :limit=>100
			t.integer :BF, :default=>0, :limit=>100
			t.integer :BG, :default=>0, :limit=>100
			t.integer :BI, :default=>0, :limit=>100
			t.integer :BJ, :default=>0, :limit=>100
			t.integer :BN, :default=>0, :limit=>100
			t.integer :BO, :default=>0, :limit=>100
			t.integer :BR, :default=>0, :limit=>100
			t.integer :BS, :default=>0, :limit=>100
			t.integer :BT, :default=>0, :limit=>100
			t.integer :BW, :default=>0, :limit=>100
			t.integer :BY, :default=>0, :limit=>100
			t.integer :BZ, :default=>0, :limit=>100
			t.integer :CA, :default=>0, :limit=>100
			t.integer :CD, :default=>0, :limit=>100
			t.integer :CF, :default=>0, :limit=>100
			t.integer :CG, :default=>0, :limit=>100
			t.integer :CH, :default=>0, :limit=>100
			t.integer :CI, :default=>0, :limit=>100
			t.integer :CL, :default=>0, :limit=>100
			t.integer :CM, :default=>0, :limit=>100
			t.integer :CN, :default=>0, :limit=>100
			t.integer :CO, :default=>0, :limit=>100
			t.integer :CR, :default=>0, :limit=>100
			t.integer :CU, :default=>0, :limit=>100
			t.integer :CY, :default=>0, :limit=>100
			t.integer :CZ, :default=>0, :limit=>100
			t.integer :DE, :default=>0, :limit=>100
			t.integer :DJ, :default=>0, :limit=>100
			t.integer :DK, :default=>0, :limit=>100
			t.integer :DO, :default=>0, :limit=>100
			t.integer :DZ, :default=>0, :limit=>100
			t.integer :EC, :default=>0, :limit=>100
			t.integer :EE, :default=>0, :limit=>100
			t.integer :EG, :default=>0, :limit=>100
			t.integer :ER, :default=>0, :limit=>100
			t.integer :ES, :default=>0, :limit=>100
			t.integer :ET, :default=>0, :limit=>100
			t.integer :FI, :default=>0, :limit=>100
			t.integer :FJ, :default=>0, :limit=>100
			t.integer :FK, :default=>0, :limit=>100
			t.integer :FR, :default=>0, :limit=>100
			t.integer :GA, :default=>0, :limit=>100
			t.integer :GB, :default=>0, :limit=>100
			t.integer :GE, :default=>0, :limit=>100
			t.integer :GH, :default=>0, :limit=>100
			t.integer :GL, :default=>0, :limit=>100
			t.integer :GM, :default=>0, :limit=>100
			t.integer :GN, :default=>0, :limit=>100
			t.integer :GQ, :default=>0, :limit=>100
			t.integer :GR, :default=>0, :limit=>100
			t.integer :GT, :default=>0, :limit=>100
			t.integer :GW, :default=>0, :limit=>100
			t.integer :GY, :default=>0, :limit=>100
			t.integer :HN, :default=>0, :limit=>100
			t.integer :HR, :default=>0, :limit=>100
			t.integer :HT, :default=>0, :limit=>100
			t.integer :HU, :default=>0, :limit=>100
			t.integer :IND, :default=>0, :limit=>100
			t.integer :IE, :default=>0, :limit=>100
			t.integer :IL, :default=>0, :limit=>100
			t.integer :IN, :default=>0, :limit=>100
			t.integer :IQ, :default=>0, :limit=>100
			t.integer :IR, :default=>0, :limit=>100
			t.integer :IS, :default=>0, :limit=>100
			t.integer :IT, :default=>0, :limit=>100
			t.integer :JM, :default=>0, :limit=>100
			t.integer :JO, :default=>0, :limit=>100
			t.integer :JP, :default=>0, :limit=>100
			t.integer :KE, :default=>0, :limit=>100
			t.integer :KG, :default=>0, :limit=>100
			t.integer :KH, :default=>0, :limit=>100
			t.integer :KO, :default=>0, :limit=>100
			t.integer :KP, :default=>0, :limit=>100
			t.integer :KR, :default=>0, :limit=>100
			t.integer :KW, :default=>0, :limit=>100
			t.integer :KZ, :default=>0, :limit=>100
			t.integer :LA, :default=>0, :limit=>100
			t.integer :LB, :default=>0, :limit=>100
			t.integer :LK, :default=>0, :limit=>100
			t.integer :LR, :default=>0, :limit=>100
			t.integer :LS, :default=>0, :limit=>100
			t.integer :LT, :default=>0, :limit=>100
			t.integer :LU, :default=>0, :limit=>100
			t.integer :LV, :default=>0, :limit=>100
			t.integer :LY, :default=>0, :limit=>100
			t.integer :MA, :default=>0, :limit=>100
			t.integer :MD, :default=>0, :limit=>100
			t.integer :ME, :default=>0, :limit=>100
			t.integer :MG, :default=>0, :limit=>100
			t.integer :MK, :default=>0, :limit=>100
			t.integer :ML, :default=>0, :limit=>100
			t.integer :MM, :default=>0, :limit=>100
			t.integer :MN, :default=>0, :limit=>100
			t.integer :MR, :default=>0, :limit=>100
			t.integer :MW, :default=>0, :limit=>100
			t.integer :MX, :default=>0, :limit=>100
			t.integer :MY, :default=>0, :limit=>100
			t.integer :MZ, :default=>0, :limit=>100
			t.integer :NA, :default=>0, :limit=>100
			t.integer :NC, :default=>0, :limit=>100
			t.integer :NE, :default=>0, :limit=>100
			t.integer :NG, :default=>0, :limit=>100
			t.integer :NI, :default=>0, :limit=>100
			t.integer :NL, :default=>0, :limit=>100
			t.integer :NO, :default=>0, :limit=>100
			t.integer :NP, :default=>0, :limit=>100
			t.integer :NZ, :default=>0, :limit=>100
			t.integer :OM, :default=>0, :limit=>100
			t.integer :PA, :default=>0, :limit=>100
			t.integer :PE, :default=>0, :limit=>100
			t.integer :PG, :default=>0, :limit=>100
			t.integer :PH, :default=>0, :limit=>100
			t.integer :PK, :default=>0, :limit=>100
			t.integer :PL, :default=>0, :limit=>100
			t.integer :PR, :default=>0, :limit=>100
			t.integer :PS, :default=>0, :limit=>100
			t.integer :PT, :default=>0, :limit=>100
			t.integer :PY, :default=>0, :limit=>100
			t.integer :QA, :default=>0, :limit=>100
			t.integer :RO, :default=>0, :limit=>100
			t.integer :RS, :default=>0, :limit=>100
			t.integer :RU, :default=>0, :limit=>100
			t.integer :RW, :default=>0, :limit=>100
			t.integer :SA, :default=>0, :limit=>100
			t.integer :SB, :default=>0, :limit=>100
			t.integer :SD, :default=>0, :limit=>100
			t.integer :SE, :default=>0, :limit=>100
			t.integer :SI, :default=>0, :limit=>100
			t.integer :SK, :default=>0, :limit=>100
			t.integer :SL, :default=>0, :limit=>100
			t.integer :SN, :default=>0, :limit=>100
			t.integer :SO, :default=>0, :limit=>100
			t.integer :SR, :default=>0, :limit=>100
			t.integer :SS, :default=>0, :limit=>100
			t.integer :SV, :default=>0, :limit=>100
			t.integer :SY, :default=>0, :limit=>100
			t.integer :SZ, :default=>0, :limit=>100
			t.integer :TD, :default=>0, :limit=>100
			t.integer :TF, :default=>0, :limit=>100
			t.integer :TG, :default=>0, :limit=>100
			t.integer :TH, :default=>0, :limit=>100
			t.integer :TJ, :default=>0, :limit=>100
			t.integer :TL, :default=>0, :limit=>100
			t.integer :TM, :default=>0, :limit=>100
			t.integer :TN, :default=>0, :limit=>100
			t.integer :TR, :default=>0, :limit=>100
			t.integer :TT, :default=>0, :limit=>100
			t.integer :TW, :default=>0, :limit=>100
			t.integer :TZ, :default=>0, :limit=>100
			t.integer :UA, :default=>0, :limit=>100
			t.integer :UG, :default=>0, :limit=>100
			t.integer :US, :default=>0, :limit=>100
			t.integer :UY, :default=>0, :limit=>100
			t.integer :UZ, :default=>0, :limit=>100
			t.integer :VE, :default=>0, :limit=>100
			t.integer :VN, :default=>0, :limit=>100
			t.integer :VU, :default=>0, :limit=>100
			t.integer :WS, :default=>0, :limit=>100
			t.integer :YE, :default=>0, :limit=>100
			t.integer :ZA, :default=>0, :limit=>100
			t.integer :ZM, :default=>0, :limit=>100
			t.integer :ZW, :default=>0, :limit=>100
			t.timestamps
    end
  end
end
