.class Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForGeneralNwInfo:Z

.field private flagForPostNetworkName:Z

.field private flagForPrevNetworkName:Z

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1307
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1309
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1310
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1311
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Z)Z

    .line 1312
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1313
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    .line 1314
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPostNetworkName:Z

    .line 1315
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1316
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    .prologue
    .line 1296
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkNetworkName()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 1761
    const-string v7, ""

    .line 1762
    .local v7, "mMCCMNC":Ljava/lang/String;
    const-string v6, ""

    .line 1763
    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .line 1764
    .local v5, "mEap":Ljava/lang/String;
    const-string v8, ""

    .line 1765
    .local v8, "mSPName":Ljava/lang/String;
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1766
    .local v9, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1767
    const-string v11, "gsm.sim.operator.alpha"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1768
    iget-object v11, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1769
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v11, ""

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1770
    const-string v11, ""

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 1771
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkNetworkName: mMCCMNC = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSPName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1774
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 1775
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1776
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1777
    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1778
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1779
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMatchedNetworkName(SPName) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    .end local v4    # "j":I
    :cond_1
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1791
    const/4 v10, 0x0

    .local v10, "p":I
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_8

    .line 1792
    if-eqz v1, :cond_11

    .line 1793
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1794
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1795
    :cond_3
    const-string v6, "WPA-EAP IEEE8021X"

    .line 1802
    :goto_3
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    .line 1803
    const-string v5, "SIM"

    .line 1814
    :goto_4
    iget-boolean v11, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v11, :cond_2

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1816
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1817
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 1818
    :cond_5
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMatchedPrevNetworkName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_6
    const-string v6, ""

    .line 1821
    const-string v5, ""

    .line 1822
    const/4 v11, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$2202(Z)Z

    .line 1826
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const-string v11, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 1834
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":I
    :cond_8
    :goto_5
    return-void

    .line 1783
    .restart local v4    # "j":I
    :cond_9
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v11

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1784
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMatchedNetworkName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1831
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    .line 1832
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "checkNetworkName - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1774
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "j":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1796
    .end local v4    # "j":I
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v10    # "p":I
    :cond_b
    :try_start_1
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1797
    const-string v6, "NONE"

    goto/16 :goto_3

    .line 1799
    :cond_c
    const-string v6, ""

    goto/16 :goto_3

    .line 1804
    :cond_d
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_e

    .line 1805
    const-string v5, "AKA"

    goto/16 :goto_4

    .line 1806
    :cond_e
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    if-nez v11, :cond_f

    .line 1807
    const-string v5, "PEAP"

    goto/16 :goto_4

    .line 1808
    :cond_f
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    if-ne v11, v14, :cond_10

    .line 1809
    const-string v5, "TTLS"

    goto/16 :goto_4

    .line 1811
    :cond_10
    const-string v5, ""
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1791
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 23
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1646
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "WifiService"

    const-string v20, "getGeneralNwInfoFromFile()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1649
    const-string v3, ""

    .line 1650
    .local v3, "buf1":Ljava/lang/String;
    const-string v4, ""

    .line 1651
    .local v4, "buf2":Ljava/lang/String;
    const-string v5, ""

    .line 1653
    .local v5, "buf3":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1655
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "bufLine":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1659
    const-string v19, "mccmnc=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1660
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1661
    .local v11, "mccmnc":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1662
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1663
    goto :goto_0

    .end local v11    # "mccmnc":Ljava/lang/String;
    :cond_2
    const-string v19, "networkname=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1664
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1665
    .local v14, "networkname":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1666
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1667
    goto/16 :goto_0

    .end local v14    # "networkname":Ljava/lang/String;
    :cond_3
    const-string v19, "spname=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1668
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 1669
    .local v17, "spname":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1670
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 1671
    goto/16 :goto_0

    .line 1677
    .end local v17    # "spname":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 1679
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1687
    :cond_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1688
    .local v12, "mccmncs":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1689
    .local v15, "networknames":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1691
    .local v18, "spnames":[Ljava/lang/String;
    array-length v13, v12

    .line 1692
    .local v13, "networkCount":I
    new-array v0, v13, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-object/from16 v16, v0

    .line 1694
    .local v16, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v13, :cond_a

    .line 1695
    :try_start_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1696
    new-instance v19, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v20, v12, v8

    aget-object v21, v15, v8

    aget-object v22, v18, v8

    invoke-direct/range {v19 .. v22}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v16, v8

    .line 1697
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "GeneralNwInfo["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]: mccmnc("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") networkname("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") spname("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1694
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1680
    .end local v8    # "i":I
    .end local v12    # "mccmncs":[Ljava/lang/String;
    .end local v13    # "networkCount":I
    .end local v15    # "networknames":[Ljava/lang/String;
    .end local v16    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v18    # "spnames":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1681
    .local v7, "e":Ljava/io/IOException;
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v16, 0x0

    move-object v9, v10

    .line 1706
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_7
    :goto_3
    return-object v16

    .line 1673
    :catch_1
    move-exception v7

    .line 1674
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1675
    const/16 v16, 0x0

    .line 1677
    if-eqz v9, :cond_7

    .line 1679
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1680
    :catch_2
    move-exception v7

    .line 1681
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v16, 0x0

    goto :goto_3

    .line 1677
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_5
    if-eqz v9, :cond_8

    .line 1679
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1682
    :cond_8
    throw v19

    .line 1680
    :catch_3
    move-exception v7

    .line 1681
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "WifiService"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v16, 0x0

    goto :goto_3

    .line 1699
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "bufLine":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "mccmncs":[Ljava/lang/String;
    .restart local v13    # "networkCount":I
    .restart local v15    # "networknames":[Ljava/lang/String;
    .restart local v16    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v18    # "spnames":[Ljava/lang/String;
    :cond_9
    :try_start_7
    new-instance v19, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v20, v12, v8

    aget-object v21, v15, v8

    invoke-direct/range {v19 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v16, v8

    .line 1700
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "GeneralNwInfo["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]: mccmnc("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") networkname("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v16, v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    .line 1704
    :catch_4
    move-exception v7

    .line 1705
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v19, "WifiService"

    const-string v20, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/16 v16, 0x0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v7    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :cond_a
    move-object v9, v10

    .line 1703
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1677
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v12    # "mccmncs":[Ljava/lang/String;
    .end local v13    # "networkCount":I
    .end local v15    # "networknames":[Ljava/lang/String;
    .end local v16    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v18    # "spnames":[Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1673
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1711
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    .line 1713
    const-string v0, ""

    .line 1715
    .local v0, "buf1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1717
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1721
    const-string v11, "networkname=\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1722
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1723
    .local v7, "networkname":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x22

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1724
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1725
    goto :goto_0

    .line 1731
    .end local v7    # "networkname":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 1733
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1741
    :cond_2
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1742
    .local v8, "networknames":[Ljava/lang/String;
    array-length v6, v8

    .line 1743
    .local v6, "networkCount":I
    new-array v9, v6, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1745
    .local v9, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_6

    .line 1746
    :try_start_3
    new-instance v11, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v12, v8, v3

    invoke-direct {v11, v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v3

    .line 1747
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPrevNetworkNameFromFile: PrevNetworkName["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v3

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1745
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1734
    .end local v3    # "i":I
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :catch_0
    move-exception v2

    .line 1735
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1752
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v9

    .line 1727
    :catch_1
    move-exception v2

    .line 1728
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1731
    if-eqz v4, :cond_4

    .line 1733
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    move-object v9, v10

    .line 1736
    goto :goto_2

    .line 1734
    :catch_2
    move-exception v2

    .line 1735
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 1736
    goto :goto_2

    .line 1731
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v4, :cond_5

    .line 1733
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1736
    :cond_5
    throw v11

    .line 1734
    :catch_3
    move-exception v2

    .line 1735
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 1736
    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "networkCount":I
    .restart local v8    # "networknames":[Ljava/lang/String;
    .restart local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_6
    move-object v4, v5

    .line 1749
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1750
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 1751
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile: No ApInfo - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1752
    goto :goto_2

    .line 1731
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1727
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 47
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1439
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Z)Z

    .line 1442
    const-string v42, ""

    .line 1443
    .local v42, "ssidbuf":Ljava/lang/String;
    const-string v21, ""

    .line 1444
    .local v21, "keymgmtbuf":Ljava/lang/String;
    const-string v45, ""

    .line 1445
    .local v45, "wepkeybuf":Ljava/lang/String;
    const-string v33, ""

    .line 1446
    .local v33, "prioritybuf":Ljava/lang/String;
    const-string v12, ""

    .line 1447
    .local v12, "eapbuf":Ljava/lang/String;
    const-string v24, ""

    .line 1448
    .local v24, "networknamebuf":Ljava/lang/String;
    const-string v39, ""

    .line 1449
    .local v39, "spnamebuf":Ljava/lang/String;
    const-string v17, ""

    .line 1450
    .local v17, "identitybuf":Ljava/lang/String;
    const-string v27, ""

    .line 1451
    .local v27, "passwordbuf":Ljava/lang/String;
    const-string v31, ""

    .line 1453
    .local v31, "phasebuf":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1455
    .local v19, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1457
    .end local v19    # "in":Ljava/io/BufferedReader;
    .local v20, "in":Ljava/io/BufferedReader;
    const/16 v1, 0xa

    :try_start_1
    new-array v14, v1, [I

    fill-array-data v14, :array_0

    .line 1458
    .local v14, "flagForApinfo":[I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "bufLine":Ljava/lang/String;
    if-eqz v9, :cond_18

    .line 1459
    const-string v1, "ssid=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1460
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    .line 1461
    .local v41, "ssid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1463
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v14, v1

    .line 1511
    .end local v41    # "ssid":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "}"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1512
    const/4 v1, 0x0

    aget v1, v14, v1

    if-nez v1, :cond_3

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1514
    :cond_3
    const/4 v1, 0x1

    aget v1, v14, v1

    if-nez v1, :cond_4

    .line 1515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1516
    :cond_4
    const/4 v1, 0x2

    aget v1, v14, v1

    if-nez v1, :cond_5

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1518
    :cond_5
    const/4 v1, 0x3

    aget v1, v14, v1

    if-nez v1, :cond_6

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1520
    :cond_6
    const/4 v1, 0x4

    aget v1, v14, v1

    if-nez v1, :cond_7

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1522
    :cond_7
    const/4 v1, 0x5

    aget v1, v14, v1

    if-nez v1, :cond_8

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1524
    :cond_8
    const/4 v1, 0x6

    aget v1, v14, v1

    if-nez v1, :cond_9

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1526
    :cond_9
    const/4 v1, 0x7

    aget v1, v14, v1

    if-nez v1, :cond_a

    .line 1527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1528
    :cond_a
    const/16 v1, 0x8

    aget v1, v14, v1

    if-nez v1, :cond_b

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1530
    :cond_b
    const/16 v1, 0x9

    aget v1, v14, v1

    if-nez v1, :cond_c

    .line 1531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1533
    :cond_c
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->APInfoCount:I
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3800()I

    move-result v1

    if-ge v15, v1, :cond_1

    .line 1534
    const/4 v1, 0x0

    aput v1, v14, v15

    .line 1533
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1464
    .end local v15    # "i":I
    :cond_d
    const-string v1, "key_mgmt="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1465
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    .line 1466
    .local v36, "secure":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1468
    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v14, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1537
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    .end local v36    # "secure":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object/from16 v19, v20

    .line 1538
    .end local v20    # "in":Ljava/io/BufferedReader;
    .local v10, "e":Ljava/io/IOException;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1539
    const/16 v35, 0x0

    .line 1541
    if-eqz v19, :cond_e

    .line 1543
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1641
    .end local v10    # "e":Ljava/io/IOException;
    :cond_e
    :goto_3
    return-object v35

    .line 1469
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v14    # "flagForApinfo":[I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_f
    :try_start_4
    const-string v1, "wep_key0="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1470
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    .line 1471
    .local v44, "wepkey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1473
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v14, v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1541
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    .end local v44    # "wepkey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v19, :cond_10

    .line 1543
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1546
    :cond_10
    throw v1

    .line 1474
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v14    # "flagForApinfo":[I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_11
    :try_start_6
    const-string v1, "priority="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1475
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    .line 1476
    .local v32, "priority":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1478
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1479
    .end local v32    # "priority":Ljava/lang/String;
    :cond_12
    const-string v1, "eap="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1480
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1481
    .local v11, "eap":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1483
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1484
    .end local v11    # "eap":Ljava/lang/String;
    :cond_13
    const-string v1, "networkname=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1485
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 1486
    .local v23, "networkname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1488
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1489
    .end local v23    # "networkname":Ljava/lang/String;
    :cond_14
    const-string v1, "spname=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1490
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    .line 1491
    .local v38, "spname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1493
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1494
    .end local v38    # "spname":Ljava/lang/String;
    :cond_15
    const-string v1, "identity=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1495
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1496
    .local v16, "identity":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1498
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1499
    .end local v16    # "identity":Ljava/lang/String;
    :cond_16
    const-string v1, "password=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1500
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 1501
    .local v26, "password":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1503
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput v2, v14, v1

    goto/16 :goto_0

    .line 1504
    .end local v26    # "password":Ljava/lang/String;
    :cond_17
    const-string v1, "phase2=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1505
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1506
    .local v29, "phase2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1508
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput v2, v14, v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1541
    .end local v29    # "phase2":Ljava/lang/String;
    :cond_18
    if-eqz v20, :cond_19

    .line 1543
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1551
    :cond_19
    const-string v1, ","

    move-object/from16 v0, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 1552
    .local v43, "ssids":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 1553
    .local v37, "secures":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v46

    .line 1554
    .local v46, "wepkeys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 1555
    .local v34, "prioritys":[Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1556
    .local v13, "eaps":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1557
    .local v25, "networknames":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 1558
    .local v40, "spnames":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1559
    .local v18, "identitys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1560
    .local v28, "passwords":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1563
    .local v30, "phase2s":[Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v22, v0

    .line 1564
    .local v22, "networkCount":I
    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-object/from16 v35, v0

    .line 1565
    .local v35, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    move/from16 v0, v22

    if-ge v15, v0, :cond_2c

    .line 1566
    const-string v1, "WPA-EAP IEEE8021X"

    aget-object v2, v37, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1567
    const-string v1, " "

    aget-object v2, v34, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, " "

    aget-object v2, v43, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, " "

    aget-object v2, v13, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1568
    const-string v1, " "

    aget-object v2, v18, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, " "

    aget-object v2, v28, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1569
    const-string v1, " "

    aget-object v2, v25, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1570
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1571
    const-string v1, " "

    aget-object v2, v40, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1572
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v25, v15

    aget-object v7, v40, v15

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    .line 1582
    :goto_6
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM/AKA DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1565
    :cond_1a
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 1544
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v15    # "i":I
    .end local v18    # "identitys":[Ljava/lang/String;
    .end local v22    # "networkCount":I
    .end local v25    # "networknames":[Ljava/lang/String;
    .end local v28    # "passwords":[Ljava/lang/String;
    .end local v30    # "phase2s":[Ljava/lang/String;
    .end local v34    # "prioritys":[Ljava/lang/String;
    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v37    # "secures":[Ljava/lang/String;
    .end local v40    # "spnames":[Ljava/lang/String;
    .end local v43    # "ssids":[Ljava/lang/String;
    .end local v46    # "wepkeys":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1545
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/16 v35, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1544
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    :catch_2
    move-exception v10

    .line 1545
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 1544
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 1545
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 1574
    .end local v10    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v13    # "eaps":[Ljava/lang/String;
    .restart local v14    # "flagForApinfo":[I
    .restart local v15    # "i":I
    .restart local v18    # "identitys":[Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "networkCount":I
    .restart local v25    # "networknames":[Ljava/lang/String;
    .restart local v28    # "passwords":[Ljava/lang/String;
    .restart local v30    # "phase2s":[Ljava/lang/String;
    .restart local v34    # "prioritys":[Ljava/lang/String;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v37    # "secures":[Ljava/lang/String;
    .restart local v40    # "spnames":[Ljava/lang/String;
    .restart local v43    # "ssids":[Ljava/lang/String;
    .restart local v46    # "wepkeys":[Ljava/lang/String;
    :cond_1b
    :try_start_9
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v25, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_6

    .line 1639
    .end local v15    # "i":I
    .end local v22    # "networkCount":I
    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :catch_4
    move-exception v10

    .line 1640
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const/16 v35, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1577
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "i":I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v22    # "networkCount":I
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_1c
    :try_start_a
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v25, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    goto/16 :goto_6

    .line 1580
    :cond_1d
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    goto/16 :goto_6

    .line 1583
    :cond_1e
    const-string v1, " "

    aget-object v2, v18, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, " "

    aget-object v2, v28, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1584
    const-string v1, " "

    aget-object v2, v30, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1585
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v18, v15

    aget-object v7, v28, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    .line 1588
    :goto_8
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEAP/TTLS DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1587
    :cond_1f
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v13, v15

    aget-object v6, v18, v15

    aget-object v7, v28, v15

    aget-object v8, v30, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v35, v15

    goto :goto_8

    .line 1590
    :cond_20
    const-string v1, "WifiService"

    const-string v2, "WPA-EAP IEEE8021X Parse error for default ap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1594
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_21
    const-string v1, "WifiService"

    const-string v2, "WPA-EAP IEEE8021X Parse error for default ap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1597
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_22
    const-string v1, "NONE"

    aget-object v2, v37, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1598
    const-string v1, " "

    aget-object v2, v43, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1599
    const-string v1, " "

    aget-object v2, v34, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1600
    const-string v1, " "

    aget-object v2, v25, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1601
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1602
    const-string v1, " "

    aget-object v2, v40, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1603
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v25, v15

    aget-object v6, v40, v15

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    .line 1628
    :goto_9
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPEN DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v35, v15

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1605
    :cond_23
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto :goto_9

    .line 1608
    :cond_24
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto :goto_9

    .line 1611
    :cond_25
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    aget-object v4, v34, v15

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto :goto_9

    .line 1614
    :cond_26
    const-string v1, " "

    aget-object v2, v25, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1615
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1616
    const-string v1, " "

    aget-object v2, v40, v15

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1617
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    aget-object v5, v25, v15

    aget-object v6, v40, v15

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1619
    :cond_27
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1622
    :cond_28
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    aget-object v5, v25, v15

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1625
    :cond_29
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v43, v15

    aget-object v3, v37, v15

    const-string v4, ""

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v35, v15

    goto/16 :goto_9

    .line 1630
    :cond_2a
    const-string v1, "WifiService"

    const-string v2, "Key Mgmt is NONE but SSID is NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1634
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_2b
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secure ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v37, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1635
    const/16 v35, 0x0

    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    .restart local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_2c
    move-object/from16 v19, v20

    .line 1638
    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1541
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v14    # "flagForApinfo":[I
    .end local v15    # "i":I
    .end local v18    # "identitys":[Ljava/lang/String;
    .end local v22    # "networkCount":I
    .end local v25    # "networknames":[Ljava/lang/String;
    .end local v28    # "passwords":[Ljava/lang/String;
    .end local v30    # "phase2s":[Ljava/lang/String;
    .end local v34    # "prioritys":[Ljava/lang/String;
    .end local v35    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .end local v37    # "secures":[Ljava/lang/String;
    .end local v40    # "spnames":[Ljava/lang/String;
    .end local v43    # "ssids":[Ljava/lang/String;
    .end local v46    # "wepkeys":[Ljava/lang/String;
    :catchall_1
    move-exception v1

    goto/16 :goto_4

    .line 1537
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 1457
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private makePrevNetworkName()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 1367
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 1369
    .local v6, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .line 1370
    .local v7, "mPrevNetworkName":Ljava/lang/String;
    const-string v5, ""

    .line 1371
    .local v5, "mMCCMNC":Ljava/lang/String;
    const-string v8, ""

    .line 1373
    .local v8, "mSPName":Ljava/lang/String;
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1374
    const-string v11, "gsm.sim.operator.alpha"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1375
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makePrevNetworkName mMCCMNC = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSPName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1378
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    array-length v11, v11

    if-ge v4, v11, :cond_2

    .line 1379
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mGeneralNwInfo[].getMCCMNC() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_1
    const-string v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1381
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1382
    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1383
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v7

    .line 1384
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPrevNetworkName(SPName) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    .end local v4    # "j":I
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3700()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1400
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1401
    const-string v11, "network={\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string v11, ""

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    networkname=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    :cond_3
    const-string v11, "}\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1407
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1408
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1409
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "String mNetworkNameProfile "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_4
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {v11}, Lcom/android/server/wifi/WifiServiceImpl;->access$1402(Ljava/io/File;)Ljava/io/File;

    .line 1412
    const/4 v2, 0x0

    .line 1413
    .local v2, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1414
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1400()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1417
    :cond_5
    :try_start_2
    new-instance v9, Ljava/io/File;

    const-string v11, "/data/misc/wifi"

    const-string v12, "prev_networkname.conf"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    .local v9, "profilefilepath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 1419
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const-string v12, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1420
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v3, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1430
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    move-object v2, v3

    .line 1435
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v9    # "profilefilepath":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_7
    :goto_3
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z
    invoke-static {v14}, Lcom/android/server/wifi/WifiServiceImpl;->access$3702(Z)Z

    .line 1437
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_8
    return-void

    .line 1388
    .restart local v4    # "j":I
    :cond_9
    :try_start_5
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    .line 1389
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPrevNetworkName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1395
    .end local v4    # "j":I
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "makePrevNetworkName - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1378
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "j":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1404
    .end local v4    # "j":I
    :catch_1
    move-exception v0

    .line 1405
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "makePrevNetworkName -NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1431
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v9    # "profilefilepath":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 1432
    .local v1, "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1434
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1422
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v9    # "profilefilepath":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    const-string v11, "WifiService"

    const-string v12, "PrevNetworkName File Create Not Found "

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1430
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 1431
    :catch_4
    move-exception v1

    .line 1432
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1424
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1430
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 1431
    :catch_6
    move-exception v1

    .line 1432
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1426
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrevNetworkName create file failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1430
    if-eqz v2, :cond_7

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_3

    .line 1431
    :catch_8
    move-exception v1

    .line 1432
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1429
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1430
    :goto_7
    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 1433
    :cond_b
    :goto_8
    throw v11

    .line 1431
    :catch_9
    move-exception v1

    .line 1432
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v12, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1429
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v9    # "profilefilepath":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1426
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1424
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1422
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V
    .locals 6
    .param p1, "mAddApInfo"    # Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 1837
    const/4 v1, 0x0

    .line 1839
    .local v1, "mRes":I
    if-eqz p1, :cond_8

    .line 1840
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWifiVendorProfile: ssid is ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1843
    .local v2, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1844
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1845
    const/4 v3, 0x2

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1846
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    .line 1847
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1848
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1849
    :cond_1
    const-string v3, "WPA-EAP IEEE8021X"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1850
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1851
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1853
    :cond_2
    const-string v3, "NONE"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1854
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1856
    :cond_3
    const-string v3, "SIM"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1857
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1865
    :cond_4
    :goto_0
    const-string v3, "None"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1866
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1871
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1872
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1873
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1874
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 1875
    :cond_7
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 1876
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->enableNetwork(IZ)Z

    .line 1882
    .end local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    :goto_2
    return-void

    .line 1858
    .restart local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const-string v3, "AKA"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1859
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1879
    .end local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :catch_0
    move-exception v0

    .line 1880
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiService"

    const-string v4, "addWifiVendorProfile - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1860
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :try_start_1
    const-string v3, "PEAP"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1861
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 1862
    :cond_b
    const-string v3, "TTLS"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1863
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    .line 1867
    :cond_c
    const-string v3, "MSCHAPV2"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1868
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    .line 1869
    :cond_d
    const-string v3, "GTC"

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1870
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public checkWifiVendorProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;Z)V
    .locals 5
    .param p1, "mAddApInfo"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .param p2, "bSetNetworkName"    # Z

    .prologue
    .line 1884
    const/4 v2, 0x0

    .line 1886
    .local v2, "needSaveConfig":Z
    if-eqz p2, :cond_0

    .line 1887
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    .line 1890
    :cond_0
    if-eqz p1, :cond_6

    .line 1891
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WifiService"

    const-string v4, "checkWifiVendorProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 1893
    if-nez p2, :cond_3

    .line 1894
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V

    .line 1895
    const/4 v2, 0x1

    .line 1892
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1899
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGetSPNameFromSimForWifiprofile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1900
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSPName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1901
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V

    .line 1902
    const/4 v2, 0x1

    goto :goto_1

    .line 1905
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1906
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->addWifiVendorProfile(Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V

    .line 1907
    const/4 v2, 0x1

    goto :goto_1

    .line 1912
    :cond_5
    if-eqz v2, :cond_6

    .line 1913
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    .end local v1    # "i":I
    :cond_6
    :goto_2
    return-void

    .line 1915
    :catch_0
    move-exception v0

    .line 1916
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiService"

    const-string v4, "checkWifiVendorProfile - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 2

    .prologue
    .line 1333
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_0

    .line 1334
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    .line 1340
    :goto_0
    return-object v0

    .line 1335
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1337
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1340
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostNetworkName()V
    .locals 2

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPostNetworkName:Z

    if-nez v0, :cond_2

    .line 1356
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiService"

    const-string v1, "getPostNetworkName: mPrevNetworkName reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1358
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1359
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1363
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPostNetworkName:Z

    .line 1365
    :cond_2
    return-void

    .line 1361
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiService"

    const-string v1, "getPostNetworkName: prev_networkname.conf file doesn\'t exist "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPrevNetworkName()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 2

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    if-eqz v0, :cond_0

    .line 1345
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    .line 1352
    :goto_0
    return-object v0

    .line 1346
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1348
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1351
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->makePrevNetworkName()V

    .line 1352
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 4

    .prologue
    .line 1319
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    .line 1329
    :goto_0
    return-object v0

    .line 1321
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    .line 1322
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    .line 1324
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 1325
    :cond_1
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .line 1329
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0

    .line 1326
    :cond_3
    const-string v0, "Private"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mConfigPriorAp:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1327
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    goto :goto_1
.end method

.method public removeChangedWifiProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V
    .locals 13
    .param p1, "mRemoveApInfo"    # [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .prologue
    .line 1921
    new-instance v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v7}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1922
    .local v7, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1923
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, ""

    .line 1924
    .local v5, "mKeymgmt":Ljava/lang/String;
    const-string v4, ""

    .line 1926
    .local v4, "mEap":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    .line 1928
    :try_start_0
    const-string v9, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz p1, :cond_d

    .line 1929
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeChangedWifiProfile: mRemoveApInfo.length ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :cond_0
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_0
    array-length v9, p1

    if-ge v8, v9, :cond_d

    .line 1931
    if-eqz v1, :cond_c

    .line 1933
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1934
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1935
    :cond_2
    const-string v5, "WPA-EAP IEEE8021X"

    .line 1942
    :goto_2
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    .line 1943
    const-string v4, "SIM"

    .line 1951
    :goto_3
    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aget-object v10, p1, v8

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v9, p1, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v9, p1, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    aget-object v9, p1, v8

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1953
    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeChangedWifiProfile: remove wifi profile ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1955
    new-instance v9, Lcom/android/server/wifi/WifiNative;

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$4000(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1956
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v9, :cond_6

    .line 1957
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "WifiService"

    const-string v10, "isVendorSpecificSsid value reset to zero for remove wifi profile"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v11, "vendor_spec_ssid"

    const-string v12, "0"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1960
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1963
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    .line 1964
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1965
    iget-object v9, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    .line 1966
    const-string v5, ""

    .line 1967
    const-string v4, ""

    .line 1968
    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$2502(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1987
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "p":I
    :catch_0
    move-exception v2

    .line 1988
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v9, "WifiService"

    const-string v10, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_7
    :goto_4
    return-void

    .line 1936
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "p":I
    :cond_8
    :try_start_1
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1937
    const-string v5, "NONE"

    goto/16 :goto_2

    .line 1939
    :cond_9
    const-string v5, ""

    goto/16 :goto_2

    .line 1944
    :cond_a
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    .line 1945
    const-string v4, "AKA"

    goto/16 :goto_3

    .line 1947
    :cond_b
    const-string v4, ""

    goto/16 :goto_3

    .line 1930
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1974
    .end local v8    # "p":I
    :cond_d
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1975
    const-string v6, ""

    .line 1976
    .local v6, "mTempPrevNetworkName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 1977
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    .line 1978
    :cond_e
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeChangedWifiProfile: mMatchedNetworkName is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] and mTempPrevNetworkName is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_f
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1980
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$4100()Z

    move-result v9

    if-nez v9, :cond_7

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1981
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "WifiService"

    const-string v10, "As network changed, remove DefaultApCheck file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_10
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1983
    const/4 v9, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemovedDefaultAp:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceImpl;->access$4102(Z)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
