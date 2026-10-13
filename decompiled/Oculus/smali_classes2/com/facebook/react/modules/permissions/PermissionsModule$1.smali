.class Lcom/facebook/react/modules/permissions/PermissionsModule$1;
.super Ljava/lang/Object;
.source "PermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/permissions/PermissionsModule;->requestPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/permissions/PermissionsModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->this$0:Lcom/facebook/react/modules/permissions/PermissionsModule;

    iput-object p2, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    aget-object v0, p1, v2

    check-cast v0, [I

    check-cast v0, [I

    .line 119
    array-length v1, v0

    if-lez v1, :cond_0

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "granted"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    .line 123
    iget-object v1, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->val$permission:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "denied"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/permissions/PermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v1, "never_ask_again"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method
