.class public LjU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkU0;


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;

.field public final synthetic x:Lorg/chromium/components/search_engines/TemplateUrlService;


# direct methods
.method public constructor <init>(Lorg/chromium/components/search_engines/TemplateUrlService;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LjU0;->x:Lorg/chromium/components/search_engines/TemplateUrlService;

    iput-object p2, p0, LjU0;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, LjU0;->x:Lorg/chromium/components/search_engines/TemplateUrlService;

    invoke-virtual {v0, p0}, Lorg/chromium/components/search_engines/TemplateUrlService;->b(LkU0;)V

    .line 2
    iget-object v0, p0, LjU0;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
