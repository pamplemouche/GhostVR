.class Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
.super Ljava/lang/Object;
.source "PanelCookiesModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/PanelCookiesModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CookieData"
.end annotation


# instance fields
.field public final Expires:Ljava/util/Date;

.field public final Value:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/modules/PanelCookiesModuleImpl;


# direct methods
.method public constructor <init>(Lcom/oculus/modules/PanelCookiesModuleImpl;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/PanelCookiesModuleImpl;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->this$0:Lcom/oculus/modules/PanelCookiesModuleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Value:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Expires:Ljava/util/Date;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    instance-of v2, p1, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;

    .line 53
    .local v0, "otherData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    iget-object v2, p0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Value:Ljava/lang/String;

    iget-object v3, v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Expires:Ljava/util/Date;

    iget-object v3, v0, Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;->Expires:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 55
    .end local v0    # "otherData":Lcom/oculus/modules/PanelCookiesModuleImpl$CookieData;
    :cond_0
    return v1
.end method
