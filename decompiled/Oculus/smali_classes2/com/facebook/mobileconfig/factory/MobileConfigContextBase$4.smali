.class Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;


# direct methods
.method constructor <init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-direct {p0, p1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;->getValueFromStorage(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValueFromStorage(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    iget-boolean v1, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValueWithoutSource(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;->getValueWithoutSource(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValueWithoutSource(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    iget-boolean v1, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mWithoutLogging:Z

    .line 142
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    return-object p3
.end method
