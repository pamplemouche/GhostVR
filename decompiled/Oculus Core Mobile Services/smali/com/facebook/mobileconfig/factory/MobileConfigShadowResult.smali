.class public Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;
.super Ljava/lang/Object;
.source "MobileConfigShadowResult.java"


# instance fields
.field public final cachedResult:Ljava/lang/String;

.field public final cachedResultFromFlatbuffer:Ljava/lang/String;

.field public final configParameter:Ljava/lang/String;

.field public final debugString:Ljava/lang/String;

.field public final liveResult:Ljava/lang/String;

.field public final liveResultFromFlatbuffer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->configParameter:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->cachedResult:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->cachedResultFromFlatbuffer:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->liveResult:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->liveResultFromFlatbuffer:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/facebook/mobileconfig/factory/MobileConfigShadowResult;->debugString:Ljava/lang/String;

    .line 27
    return-void
.end method
