.class public LCi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/app/Activity;

.field public final synthetic x:Lorg/chromium/base/Callback;

.field public final synthetic y:Lorg/chromium/chrome/browser/locale/LocaleManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/locale/LocaleManager;Landroid/app/Activity;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCi0;->y:Lorg/chromium/chrome/browser/locale/LocaleManager;

    iput-object p2, p0, LCi0;->w:Landroid/app/Activity;

    iput-object p3, p0, LCi0;->x:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LCi0;->y:Lorg/chromium/chrome/browser/locale/LocaleManager;

    iget-object v1, p0, LCi0;->x:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/components/search_engines/TemplateUrlService;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 3
    invoke-static {}, LdT;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iput-boolean v3, v0, Lorg/chromium/chrome/browser/locale/LocaleManager;->a:Z

    :cond_1
    if-eqz v1, :cond_4

    .line 7
    invoke-interface {v1, v2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iput-boolean v3, v0, Lorg/chromium/chrome/browser/locale/LocaleManager;->a:Z

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    invoke-interface {v1, v2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 v0, 0x0

    .line 12
    throw v0
.end method
