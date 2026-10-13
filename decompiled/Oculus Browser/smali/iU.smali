.class public final synthetic LiU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LnU;


# direct methods
.method public constructor <init>(LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiU;->a:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LiU;->a:LnU;

    invoke-virtual {v0, p1}, LnU;->a(Ljava/lang/Object;)V

    return-void
.end method
