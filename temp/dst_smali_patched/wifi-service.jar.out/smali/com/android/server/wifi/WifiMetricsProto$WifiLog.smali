.class public final Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
.super Lcom/google/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;,
        Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public recordDurationSec:I

.field public rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    sput-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    invoke-static {}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 10

    .prologue
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v7

    .local v7, "size":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v8, v8

    if-lez v8, :cond_1

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v8, v8

    if-ge v6, v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    aget-object v1, v8, v6

    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_0

    const/4 v8, 0x1

    invoke-static {v8, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v6    # "i":I
    :cond_1
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v9, 0x3

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_3
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v9, 0x4

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_4
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v9, 0x5

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_5
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v9, 0x6

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v7, v8

    :cond_6
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v9, 0x7

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v8

    add-int/2addr v7, v8

    :cond_7
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v9, 0x8

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_8
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v9, 0x9

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_9
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v8, :cond_a

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v9, 0xa

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v9, 0xb

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v9, 0xc

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v8, :cond_d

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v9, 0xd

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v9, 0xe

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v9, 0xf

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_f
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-lez v8, :cond_11

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_11

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v8, v6

    .local v3, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_10

    const/16 v8, 0x10

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_11
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-lez v8, :cond_13

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v8, v6

    .local v4, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_12

    const/16 v8, 0x11

    invoke-static {v8, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-lez v8, :cond_15

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_15

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v8, v6

    .restart local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_14

    const/16 v8, 0x12

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_15
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-lez v8, :cond_17

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v8, v8

    if-ge v6, v8, :cond_17

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v8, v6

    .restart local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_16

    const/16 v8, 0x13

    invoke-static {v8, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_17
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v8, :cond_18

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v9, 0x14

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_18
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v8, :cond_19

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v9, 0x15

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_19
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v8, :cond_1a

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v9, 0x16

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v8, :cond_1b

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v9, 0x17

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v8, :cond_1c

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v9, 0x18

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v8, :cond_1d

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v9, 0x19

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v8, :cond_1e

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v9, 0x1a

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v8, :cond_1f

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v9, 0x1b

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1f
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v8, :cond_20

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v9, 0x1c

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_20
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v8, :cond_21

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v9, 0x1d

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_21
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v8, :cond_22

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v9, 0x1e

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_22
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v8, :cond_23

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v9, 0x1f

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_23
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v8, :cond_24

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v9, 0x20

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_24
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v8, :cond_25

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v9, 0x21

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_25
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v8, :cond_26

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v9, 0x22

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_26
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-eqz v8, :cond_28

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v8, v8

    if-lez v8, :cond_28

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v8, v8

    if-ge v6, v8, :cond_28

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    aget-object v2, v8, v6

    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    const/16 v8, 0x23

    invoke-static {v8, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .end local v6    # "i":I
    :cond_28
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v8, :cond_29

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v9, 0x24

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_29
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v8, :cond_2a

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v9, 0x25

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2a
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v8, :cond_2b

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v9, 0x26

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2b
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v8, :cond_2c

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v9, 0x27

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2c
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v8, :cond_2d

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v9, 0x28

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2d
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v8, :cond_2e

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v9, 0x29

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2e
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v8, :cond_2f

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v9, 0x2a

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_2f
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v8, :cond_30

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v9, 0x2b

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_30
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v8, :cond_31

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v9, 0x2c

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_31
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v8, :cond_32

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v9, 0x2d

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_32
    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v8, :cond_33

    iget v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v9, 0x2e

    invoke-static {v9, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_33
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-eqz v8, :cond_35

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v8, v8

    if-lez v8, :cond_35

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v8, v8

    if-ge v6, v8, :cond_35

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v8, v6

    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    const/16 v8, 0x2f

    invoke-static {v8, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .end local v6    # "i":I
    :cond_35
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    if-eqz v8, :cond_37

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v8, v8

    if-lez v8, :cond_37

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v8, v8

    if-ge v6, v8, :cond_37

    iget-object v8, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    aget-object v5, v8, v6

    .local v5, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v5, :cond_36

    const/16 v8, 0x30

    invoke-static {v8, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .end local v5    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .end local v6    # "i":I
    :cond_37
    return v7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v8

    .local v8, "tag":I
    sparse-switch v8, :sswitch_data_0

    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v10

    if-nez v10, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v10, 0xa

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .local v0, "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-nez v10, :cond_2

    move v1, v9

    .local v1, "i":I
    :goto_1
    add-int v10, v1, v0

    new-array v3, v10, [Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    .local v3, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_1

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-static {v10, v9, v3, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_3

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v10, v3, v1

    aget-object v10, v3, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v1, v10

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :cond_3
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v10, v3, v1

    aget-object v10, v3, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    goto :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_0

    :sswitch_10
    const/16 v10, 0x82

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v10, :cond_5

    move v1, v9

    .restart local v1    # "i":I
    :goto_3
    add-int v10, v1, v0

    new-array v5, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .local v5, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_4

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v10, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_6

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v10

    goto :goto_3

    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_6
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_11
    const/16 v10, 0x8a

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v10, :cond_8

    move v1, v9

    .restart local v1    # "i":I
    :goto_5
    add-int v10, v1, v0

    new-array v6, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .local v6, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_7

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v10, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_9

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_8
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v10

    goto :goto_5

    .restart local v1    # "i":I
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_9
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_12
    const/16 v10, 0x92

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v10, :cond_b

    move v1, v9

    .restart local v1    # "i":I
    :goto_7
    add-int v10, v1, v0

    new-array v5, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v1, :cond_a

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-static {v10, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_c

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_b
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v1, v10

    goto :goto_7

    .restart local v1    # "i":I
    .restart local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_c
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v10, v5, v1

    aget-object v10, v5, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v5, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_13
    const/16 v10, 0x9a

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v10, :cond_e

    move v1, v9

    .restart local v1    # "i":I
    :goto_9
    add-int v10, v1, v0

    new-array v6, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v1, :cond_d

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-static {v10, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_f

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_e
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v1, v10

    goto :goto_9

    .restart local v1    # "i":I
    .restart local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_f
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v10, v6, v1

    aget-object v10, v6, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_0

    :sswitch_23
    const/16 v10, 0x11a

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-nez v10, :cond_11

    move v1, v9

    .restart local v1    # "i":I
    :goto_b
    add-int v10, v1, v0

    new-array v4, v10, [Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    .local v4, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v1, :cond_10

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-static {v10, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_12

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v10, v4, v1

    aget-object v10, v4, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_11
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v1, v10

    goto :goto_b

    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :cond_12
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v10, v4, v1

    aget-object v10, v4, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_0

    :sswitch_2f
    const/16 v10, 0x17a

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-nez v10, :cond_14

    move v1, v9

    .restart local v1    # "i":I
    :goto_d
    add-int v10, v1, v0

    new-array v2, v10, [Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    .local v2, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v1, :cond_13

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-static {v10, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_e
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_15

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v10, v2, v1

    aget-object v10, v2, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_14
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v1, v10

    goto :goto_d

    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :cond_15
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v10, v2, v1

    aget-object v10, v2, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_0

    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    :sswitch_30
    const/16 v10, 0x182

    invoke-static {p1, v10}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .restart local v0    # "arrayLength":I
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    if-nez v10, :cond_17

    move v1, v9

    .restart local v1    # "i":I
    :goto_f
    add-int v10, v1, v0

    new-array v7, v10, [Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    .local v7, "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v1, :cond_16

    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-static {v10, v9, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_10
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_18

    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v10, v7, v1

    aget-object v10, v7, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v1    # "i":I
    .end local v7    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_17
    iget-object v10, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v1, v10

    goto :goto_f

    .restart local v1    # "i":I
    .restart local v7    # "newArray":[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    :cond_18
    new-instance v10, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v10}, Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v10, v7, v1

    aget-object v10, v7, v1

    invoke-virtual {p1, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x11a -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x158 -> :sswitch_2b
        0x160 -> :sswitch_2c
        0x168 -> :sswitch_2d
        0x170 -> :sswitch_2e
        0x17a -> :sswitch_2f
        0x182 -> :sswitch_30
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 9
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v7, v7

    if-lez v7, :cond_1

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;

    aget-object v1, v7, v6

    .local v1, "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "element":Lcom/android/server/wifi/WifiMetricsProto$ConnectionEvent;
    .end local v6    # "i":I
    :cond_1
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v8, 0x2

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v8, 0x3

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v8, 0x4

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v8, 0x5

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v8, 0x6

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v8, 0x7

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v8, 0x8

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v8, 0x9

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v8, 0xa

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v8, 0xb

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v8, 0xc

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v8, 0xd

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v7, :cond_e

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v8, 0xe

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v8, 0xf

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-lez v7, :cond_11

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_11

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v7, v6

    .local v3, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_10

    const/16 v7, 0x10

    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_11
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-lez v7, :cond_13

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_13

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v7, v6

    .local v4, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_12

    const/16 v7, 0x11

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_13
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-lez v7, :cond_15

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_15

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v3, v7, v6

    .restart local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v3, :cond_14

    const/16 v7, 0x12

    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v3    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v6    # "i":I
    :cond_15
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-lez v7, :cond_17

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v7, v7

    if-ge v6, v7, :cond_17

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v4, v7, v6

    .restart local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_16

    const/16 v7, 0x13

    invoke-virtual {p1, v7, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v4    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v6    # "i":I
    :cond_17
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v7, :cond_18

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v8, 0x14

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v7, :cond_19

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v8, 0x15

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v7, :cond_1a

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v8, 0x16

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v7, :cond_1b

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v8, 0x17

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v7, :cond_1c

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v8, 0x18

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v7, :cond_1d

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v8, 0x19

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v7, :cond_1e

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v8, 0x1a

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v7, :cond_1f

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v8, 0x1b

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1f
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v7, :cond_20

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v8, 0x1c

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_20
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v7, :cond_21

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v8, 0x1d

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_21
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v7, :cond_22

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v8, 0x1e

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_22
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v7, :cond_23

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v8, 0x1f

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_23
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v7, :cond_24

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v8, 0x20

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_24
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v7, :cond_25

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v8, 0x21

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_25
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v7, :cond_26

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v8, 0x22

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_26
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v7, v7

    if-lez v7, :cond_28

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    array-length v7, v7

    if-ge v6, v7, :cond_28

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;

    aget-object v2, v7, v6

    .local v2, "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    if-eqz v2, :cond_27

    const/16 v7, 0x23

    invoke-virtual {p1, v7, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v2    # "element":Lcom/android/server/wifi/WifiMetricsProto$RssiPollCount;
    .end local v6    # "i":I
    :cond_28
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v7, :cond_29

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v8, 0x24

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_29
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v7, :cond_2a

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v8, 0x25

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2a
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v7, :cond_2b

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v8, 0x26

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2b
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v7, :cond_2c

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v8, 0x27

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2c
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v7, :cond_2d

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v8, 0x28

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2d
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v7, :cond_2e

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v8, 0x29

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2e
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v7, :cond_2f

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v8, 0x2a

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2f
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v7, :cond_30

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v8, 0x2b

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_30
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v7, :cond_31

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v8, 0x2c

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_31
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v7, :cond_32

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v8, 0x2d

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_32
    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v7, :cond_33

    iget v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v8, 0x2e

    invoke-virtual {p1, v8, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_33
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    if-eqz v7, :cond_35

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v7, v7

    if-lez v7, :cond_35

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    array-length v7, v7

    if-ge v6, v7, :cond_35

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v7, v6

    .local v0, "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .end local v0    # "element":Lcom/android/server/wifi/WifiMetricsProto$AlertReasonCount;
    .end local v6    # "i":I
    :cond_35
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v7, v7

    if-lez v7, :cond_37

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    array-length v7, v7

    if-ge v6, v7, :cond_37

    iget-object v7, p0, Lcom/android/server/wifi/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;

    aget-object v5, v7, v6

    .local v5, "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    if-eqz v5, :cond_36

    const/16 v7, 0x30

    invoke-virtual {p1, v7, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .end local v5    # "element":Lcom/android/server/wifi/WifiMetricsProto$WifiScoreCount;
    .end local v6    # "i":I
    :cond_37
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
