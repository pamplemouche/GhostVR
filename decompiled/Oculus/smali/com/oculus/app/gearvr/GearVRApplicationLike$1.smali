.class Lcom/oculus/app/gearvr/GearVRApplicationLike$1;
.super Ljava/lang/Object;
.source "GearVRApplicationLike.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/app/gearvr/GearVRApplicationLike;->onCreate(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/app/gearvr/GearVRApplicationLike;


# direct methods
.method constructor <init>(Lcom/oculus/app/gearvr/GearVRApplicationLike;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/app/gearvr/GearVRApplicationLike$1;->this$0:Lcom/oculus/app/gearvr/GearVRApplicationLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/app/gearvr/GearVRApplicationLike$1;->this$0:Lcom/oculus/app/gearvr/GearVRApplicationLike;

    invoke-static {v0}, Lcom/oculus/app/gearvr/GearVRApplicationLike;->access$000(Lcom/oculus/app/gearvr/GearVRApplicationLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    sget-wide v2, Lcom/oculus/app/gearvr/MC$oculus_shared_core;->is_trusted_user:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/oculus/app/gearvr/GearVRApplicationLike$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
