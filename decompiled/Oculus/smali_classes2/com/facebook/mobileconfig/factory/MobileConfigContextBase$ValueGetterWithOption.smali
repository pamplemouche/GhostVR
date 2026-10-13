.class abstract Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
.super Ljava/lang/Object;
.source "MobileConfigContextBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ValueGetterWithOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;


# direct methods
.method constructor <init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getValue(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/facebook/mobileconfig/factory/MobileConfigOptions;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__NO_DATA_ON_DISK:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 86
    :goto_0
    return-object p3

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->hasValueFromStorage(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->SERVER:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->this$0:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->hasServerValueFromStorage(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__SERVER_RETURNED_NULL:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__MISSING_SERVER_VALUE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValueWithoutSource(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method

.method abstract getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/facebook/mobileconfig/factory/MobileConfigOptions;",
            ")TT;"
        }
    .end annotation
.end method

.method getValueWithoutSource(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/facebook/mobileconfig/factory/MobileConfigOptions;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValueFromStorage(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
