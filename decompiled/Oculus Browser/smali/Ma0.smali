.class public final synthetic LMa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LJx;


# direct methods
.method public constructor <init>(LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMa0;->a:LJx;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LMa0;->a:LJx;

    check-cast p1, Ljava/util/Map;

    .line 1
    invoke-static {p1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    invoke-interface {v0, p1}, LJx;->a(Ljava/lang/Object;)V

    return-void
.end method
