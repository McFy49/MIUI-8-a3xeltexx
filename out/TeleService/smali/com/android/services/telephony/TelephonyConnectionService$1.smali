.class Lcom/android/services/telephony/TelephonyConnectionService$1;
.super Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
.source "TelephonyConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnectionService;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->this$0:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOriginalConnectionConfigured(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->this$0:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnectionService;->addConnectionToConferenceController(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 85
    return-void
.end method