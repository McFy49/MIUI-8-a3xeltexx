.class Lcom/ipsec/client/IPsecClient$1$2;
.super Ljava/lang/Object;
.source "IPsecClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ipsec/client/IPsecClient$1;->valueChanged(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ipsec/client/IPsecClient$1;

.field final synthetic val$eventData:Lcom/ipsec/client/IPsecEventData;

.field final synthetic val$eventError:Lcom/ipsec/client/IPsecError;

.field final synthetic val$eventListener:Lcom/ipsec/client/IIPsecListener;


# direct methods
.method constructor <init>(Lcom/ipsec/client/IPsecClient$1;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecClient$1$2;->this$1:Lcom/ipsec/client/IPsecClient$1;

    iput-object p2, p0, Lcom/ipsec/client/IPsecClient$1$2;->val$eventListener:Lcom/ipsec/client/IIPsecListener;

    iput-object p3, p0, Lcom/ipsec/client/IPsecClient$1$2;->val$eventError:Lcom/ipsec/client/IPsecError;

    iput-object p4, p0, Lcom/ipsec/client/IPsecClient$1$2;->val$eventData:Lcom/ipsec/client/IPsecEventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient$1$2;->val$eventListener:Lcom/ipsec/client/IIPsecListener;

    iget-object v1, p0, Lcom/ipsec/client/IPsecClient$1$2;->val$eventError:Lcom/ipsec/client/IPsecError;

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient$1$2;->val$eventData:Lcom/ipsec/client/IPsecEventData;

    invoke-interface {v0, v1, v2}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    return-void
.end method