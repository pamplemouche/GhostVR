.class public interface abstract Lcom/facebook/rti/common/logging/RtiFlytrapLogger;
.super Ljava/lang/Object;
.source "RtiFlytrapLogger.java"


# static fields
.field public static final FLYTRAP_TOPICS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger$1;-><init>(I)V

    sput-object v0, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->FLYTRAP_TOPICS:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSystemDumper(Lcom/facebook/rti/common/logging/MqttSystemDumper;)V
.end method
