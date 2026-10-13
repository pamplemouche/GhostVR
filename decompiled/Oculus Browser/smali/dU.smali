.class public final synthetic LdU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LnU;

.field public final b:LlU;


# direct methods
.method public constructor <init>(LnU;LlU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LdU;->a:LnU;

    iput-object p2, p0, LdU;->b:LlU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LdU;->a:LnU;

    iget-object v1, p0, LdU;->b:LlU;

    .line 1
    :try_start_0
    invoke-interface {v1, p1}, LlU;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, LnU;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {v0, p1}, LnU;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
