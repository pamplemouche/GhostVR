.class public final synthetic LiU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/components/search_engines/TemplateUrlService;

.field public final x:LkU0;


# direct methods
.method public constructor <init>(Lorg/chromium/components/search_engines/TemplateUrlService;LkU0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiU0;->w:Lorg/chromium/components/search_engines/TemplateUrlService;

    iput-object p2, p0, LiU0;->x:LkU0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LiU0;->w:Lorg/chromium/components/search_engines/TemplateUrlService;

    iget-object v1, p0, LiU0;->x:LkU0;

    .line 1
    iget-object v0, v0, Lorg/chromium/components/search_engines/TemplateUrlService;->a:LWT;

    .line 2
    iget-object v0, v0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v1}, LkU0;->d()V

    :goto_0
    return-void
.end method
