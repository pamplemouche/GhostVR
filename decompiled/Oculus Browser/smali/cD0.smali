.class public abstract LcD0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/components/search_engines/TemplateUrlService;


# direct methods
.method public static a()Lorg/chromium/components/search_engines/TemplateUrlService;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LcD0;->a:Lorg/chromium/components/search_engines/TemplateUrlService;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, LJ/N;->MSnR7M2J()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/search_engines/TemplateUrlService;

    .line 4
    sput-object v0, LcD0;->a:Lorg/chromium/components/search_engines/TemplateUrlService;

    .line 5
    :cond_0
    sget-object v0, LcD0;->a:Lorg/chromium/components/search_engines/TemplateUrlService;

    return-object v0
.end method
