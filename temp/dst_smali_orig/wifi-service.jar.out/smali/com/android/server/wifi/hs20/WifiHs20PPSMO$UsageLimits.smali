.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageLimits"
.end annotation


# instance fields
.field public dataLimit:I

.field public startDate:Ljava/lang/String;

.field public timeLimit:I

.field public usageInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method