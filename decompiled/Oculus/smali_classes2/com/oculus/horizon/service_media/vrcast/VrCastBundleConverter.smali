.class public Lcom/oculus/horizon/service_media/vrcast/VrCastBundleConverter;
.super Ljava/lang/Object;
.source "VrCastBundleConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceWithStatusToBundle(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "device_name"

    iget-object v2, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "device_type"

    iget-object v2, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->type:Lcom/oculus/vrcast/VrCastController$DeviceType;

    invoke-virtual {v2}, Lcom/oculus/vrcast/VrCastController$DeviceType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v1, "device_status"

    iget-object v2, p0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    invoke-virtual {v2}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    return-object v0
.end method

.method public static devicesToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v1, "device_list"

    .line 16
    invoke-static {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastBundleConverter;->toBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    return-object v0
.end method

.method private static toBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    .line 23
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v4, "deviceid"

    iget-object v5, v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v4, "device_name"

    iget-object v5, v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v4, "device_type"

    iget-object v0, v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;->type:Lcom/oculus/vrcast/VrCastController$DeviceType;

    invoke-virtual {v0}, Lcom/oculus/vrcast/VrCastController$DeviceType;->ordinal()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    return-object v1
.end method
