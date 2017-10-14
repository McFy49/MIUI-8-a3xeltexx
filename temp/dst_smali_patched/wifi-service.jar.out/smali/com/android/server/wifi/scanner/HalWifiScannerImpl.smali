.class public Lcom/android/server/wifi/scanner/HalWifiScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "HalWifiScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HalWifiScannerImpl"


# instance fields
.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mHalBasedPnoSupported:Z

.field private final mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v0, Lcom/android/server/wifi/scanner/HalChannelHelper;

    invoke-direct {v0, p2}, Lcom/android/server/wifi/scanner/HalChannelHelper;-><init>(Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mHalBasedPnoSupported:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->cleanup()V

    return-void
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1
    .param p1, "flush"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v0, "HalWifiScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mHalBasedPnoSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoSupported(Z)Z

    move-result v0

    return v0
.end method

.method public pauseBatchedScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->pauseScan()V

    return-void
.end method

.method public resetHotlist()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetHotlist()V

    return-void
.end method

.method public resetHwPnoList()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mHalBasedPnoSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetPnoList()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->resetHwPnoList()Z

    move-result v0

    return v0
.end method

.method public restartBatchedScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    return-void
.end method

.method public setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    move-result v0

    return v0
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mHalBasedPnoSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->setPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z

    move-result v0

    return v0
.end method

.method public shouldScheduleBackgroundScanForHwPno()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mHalBasedPnoSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->shouldScheduleBackgroundScanForHwPno()Z

    move-result v0

    return v0
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 3
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "HalWifiScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments for startBatched: settings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",eventHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mSupplicantScannerDelegate:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0
.end method

.method public stopBatchedScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    return-void
.end method

.method public trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z

    move-result v0

    return v0
.end method

.method public untrackSignificantWifiChange()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/scanner/HalWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChange()V

    return-void
.end method
