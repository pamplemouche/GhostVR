.class public Lcom/oculus/horizon/platformplugin/PlatformPluginConstants;
.super Ljava/lang/Object;
.source "PlatformPluginConstants.java"


# static fields
.field public static final ABUSE_CAPTURE_WHITELIST_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.venues"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oculus.dais"

    aput-object v2, v0, v1

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/platformplugin/PlatformPluginConstants;->ABUSE_CAPTURE_WHITELIST_PACKAGES:Ljava/util/List;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
