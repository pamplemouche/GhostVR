.class public Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;
.super Ljava/lang/Object;
.source "ConfigEmergencyPushMetadata.java"


# instance fields
.field public final configName:Ljava/lang/String;

.field public final forceRefresh:Z

.field public params:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final requestingRestart:Z

.field public final restartTime:I

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZIZ)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;->configName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;->version:I

    .line 21
    iput p4, p0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;->restartTime:I

    .line 22
    iput-boolean p3, p0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;->requestingRestart:Z

    .line 23
    iput-boolean p5, p0, Lcom/facebook/mobileconfig/factory/ConfigEmergencyPushMetadata;->forceRefresh:Z

    .line 24
    return-void
.end method
