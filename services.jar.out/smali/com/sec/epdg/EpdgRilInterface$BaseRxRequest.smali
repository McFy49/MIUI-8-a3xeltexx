.class public abstract Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseRxRequest"
.end annotation


# instance fields
.field private final mCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;->mCid:I

    .line 20
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/epdg/EpdgRilInterface$BaseRxRequest;->mCid:I

    return v0
.end method
