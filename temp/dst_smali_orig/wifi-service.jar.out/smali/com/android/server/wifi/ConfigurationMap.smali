.class public Lcom/android/server/wifi/ConfigurationMap;
.super Ljava/lang/Object;
.source "ConfigurationMap.java"


# instance fields
.field private mCurrentUserId:I

.field private final mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerConfigKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerFQDNForCurrentUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerIDForCurrentUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/os/UserManager;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v3
.end method

.method public getByConfigKeyIDForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getByFQDNForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getEnabledNetworksForCurrentUser()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-object v2
.end method

.method public getEphemeralForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_0

    return-object v0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getHiddenNetworkIdsForCurrentUser()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    return-object v0
.end method

.method public handleUserSwitch(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .local v5, "previousUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iput p1, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .local v1, "currentUserProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "hiddenConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-object v4
.end method

.method public put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "current":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public remove(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "netID"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    return-object v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerConfigKey:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerFQDNForCurrentUser:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/ConfigurationMap;->mHiddenNetworkIdsForCurrentUser:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public sizeForAllUsers()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public sizeForCurrentUser()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public valuesForAllUsers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public valuesForCurrentUser()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/ConfigurationMap;->mPerIDForCurrentUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
