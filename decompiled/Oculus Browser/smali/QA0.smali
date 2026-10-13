.class public LQA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq0;


# direct methods
.method public synthetic constructor <init>(LOA0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv0;)V
    .locals 0

    return-void
.end method

.method public b(Lv0;)V
    .locals 0

    return-void
.end method

.method public c(Lv0;)V
    .locals 1

    .line 1
    iget p1, p1, Lv0;->d:I

    .line 2
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->g(I)I

    move-result p1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p1}, LJ/N;->M6oUFnyZ(Ljava/lang/Object;I)V

    if-nez p1, :cond_0

    const-string p1, "ClearBrowsingData_SwitchTo_BasicTab"

    .line 5
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ClearBrowsingData_SwitchTo_AdvancedTab"

    .line 6
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
