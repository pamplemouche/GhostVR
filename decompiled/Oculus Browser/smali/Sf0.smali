.class public final synthetic LSf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LUf0;


# direct methods
.method public constructor <init>(LUf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSf0;->a:LUf0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LSf0;->a:LUf0;

    check-cast p1, Landroid/view/View;

    .line 1
    iget-object p1, v0, LUf0;->E:LVf0;

    invoke-interface {p1}, LVf0;->d()V

    return-void
.end method
