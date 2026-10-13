.class public final synthetic LgU;
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

    iput-object p1, p0, LgU;->a:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LgU;->a:LnU;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, LnU;->a(Ljava/lang/Exception;)V

    return-void
.end method
