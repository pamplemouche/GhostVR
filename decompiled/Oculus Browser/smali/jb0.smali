.class public final synthetic Ljb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LPw;


# direct methods
.method public constructor <init>(LPw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb0;->a:LPw;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljb0;->a:LPw;

    check-cast p1, LJx;

    check-cast v0, Lgb0;

    invoke-virtual {v0, p1}, Lgb0;->a(LJx;)V

    return-void
.end method
