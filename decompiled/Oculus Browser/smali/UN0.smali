.class public final synthetic LUN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/lang/String;

.field public final c:LnU;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUN0;->a:Ljava/util/Map;

    iput-object p2, p0, LUN0;->b:Ljava/lang/String;

    iput-object p3, p0, LUN0;->c:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LUN0;->a:Ljava/util/Map;

    iget-object v1, p0, LUN0;->b:Ljava/lang/String;

    iget-object v2, p0, LUN0;->c:LnU;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, v3}, LnU;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, v3}, LnU;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
