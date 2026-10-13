.class Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;


# direct methods
.method constructor <init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-direct {p0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    return-void
.end method


# virtual methods
.method getValueFromStorage(JLjava/lang/Boolean;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getBooleanFromStorage(JZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;->getValueFromStorage(JLjava/lang/Boolean;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getValueWithoutSource(JLjava/lang/Boolean;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getBooleanFromStorage(JZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValueWithoutSource(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;->getValueWithoutSource(JLjava/lang/Boolean;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
