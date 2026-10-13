.class public Lcom/facebook/tigon/iface/TigonRequestLayers;
.super Ljava/lang/Object;
.source "TigonRequestLayers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    }
.end annotation


# static fields
.field static final ALL_LAYERS:[Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<*>;"
        }
    .end annotation
.end field

.field public static final BACKUP_HOST_SERVICE_REQUEST_INFO:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACEBOOK_LOGGING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Lcom/facebook/tigon/iface/FacebookLoggingRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIGER:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final REDIRECT:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Lcom/facebook/tigon/iface/RedirectRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TIMEOUT:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLING_CONFIG:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final XPROCESS_TRAFFIC_SHAPING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->FACEBOOK_LOGGING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 18
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->LIGER:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 20
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->REDIRECT:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 22
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->REQUEST_TIMEOUT:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 24
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->SAMPLING_CONFIG:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 26
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->XPROCESS_TRAFFIC_SHAPING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 29
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;-><init>()V

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->BACKUP_HOST_SERVICE_REQUEST_INFO:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->FACEBOOK_LOGGING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->LIGER:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->REDIRECT:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->REQUEST_TIMEOUT:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->SAMPLING_CONFIG:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->XPROCESS_TRAFFIC_SHAPING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/tigon/iface/TigonRequestLayers;->BACKUP_HOST_SERVICE_REQUEST_INFO:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->ALL_LAYERS:[Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
