.class public final synthetic LJN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LON0;

.field public final b:Z

.field public final c:Ljava/util/List;

.field public final d:LnU;


# direct methods
.method public constructor <init>(LON0;ZLjava/util/List;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJN0;->a:LON0;

    iput-boolean p2, p0, LJN0;->b:Z

    iput-object p3, p0, LJN0;->c:Ljava/util/List;

    iput-object p4, p0, LJN0;->d:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LJN0;->a:LON0;

    iget-boolean v1, p0, LJN0;->b:Z

    iget-object v2, p0, LJN0;->c:Ljava/util/List;

    iget-object v3, p0, LJN0;->d:LnU;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, LON0;->c:LnU;

    new-instance v4, LLN0;

    invoke-direct {v4, v0, v1, v2, v3}, LLN0;-><init>(LON0;ZLjava/util/List;LnU;)V

    sget-object v0, LMN0;->a:Lorg/chromium/base/Callback;

    .line 2
    invoke-virtual {p1, v4}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 3
    invoke-virtual {p1, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void
.end method
