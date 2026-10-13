.class public Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;
.super Ljava/lang/Object;
.source "GenerateUpdateInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/GenerateUpdateInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitlementIdentifier"
.end annotation


# instance fields
.field public final installedVersionCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "installed_version_code"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final itemId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;->itemId:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;->installedVersionCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;->itemId:Ljava/lang/String;

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;->installedVersionCode:Ljava/lang/String;

    .line 24
    return-void
.end method
