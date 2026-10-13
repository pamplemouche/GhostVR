.class Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$3;
.super Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
.source "MobileConfigContextBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;


# direct methods
.method constructor <init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$3;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-direct {p0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    return-void
.end method


# virtual methods
.method getValueFromStorage(JLjava/lang/Double;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Double;
    .locals 7

    .prologue
    .line 126
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$3;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-boolean v6, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getDoubleFromStorage(JDZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$3;->getValueFromStorage(JLjava/lang/Double;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
