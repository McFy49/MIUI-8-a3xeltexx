.class public abstract Landroid/location/GnssNavigationMessageEvent$Callback;
.super Ljava/lang/Object;
.source "GnssNavigationMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessageEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/location/GnssNavigationMessageEvent;

    .prologue
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    return-void
.end method
