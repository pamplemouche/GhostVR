.class public final synthetic LjV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LnV0;

.field public final b:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LnV0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LjV0;->a:LnV0;

    iput-object p2, p0, LjV0;->b:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LjV0;->a:LnV0;

    iget-object v1, p0, LjV0;->b:Lorg/chromium/base/Callback;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, LnV0;->a(Lorg/chromium/base/Callback;Ljava/util/List;)V

    return-void
.end method
