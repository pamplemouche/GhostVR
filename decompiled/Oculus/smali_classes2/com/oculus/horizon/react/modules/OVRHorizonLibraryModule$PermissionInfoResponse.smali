.class Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;
.super Ljava/lang/Object;
.source "OVRHorizonLibraryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionInfoResponse"
.end annotation


# instance fields
.field description:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field groupDescription:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field groupLabel:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field groupName:Ljava/lang/String;

.field groupPriority:I

.field label:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field protectionLevel:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toWritableMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    .prologue
    .line 255
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 256
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->description:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->groupLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->groupLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    :goto_2
    iget-object v3, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->groupDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->groupDescription:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    :goto_3
    const-string v5, "name"

    iget-object v6, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v5, "groupName"

    iget-object v6, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->groupName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v5, "packageName"

    iget-object v6, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v5, "label"

    invoke-interface {v4, v5, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "description"

    invoke-interface {v4, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "protectionLevel"

    iget v1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->protectionLevel:I

    invoke-interface {v4, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v0, "groupPriority"

    iget v1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$PermissionInfoResponse;->groupPriority:I

    invoke-interface {v4, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v0, "groupLabel"

    invoke-interface {v4, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "groupDescription"

    invoke-interface {v4, v0, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object v4

    .line 256
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 257
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 258
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 259
    :cond_3
    const-string v3, ""

    goto :goto_3
.end method
