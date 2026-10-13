.class public final synthetic LcA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjA0;


# direct methods
.method public constructor <init>(LjA0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcA0;->a:LjA0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LcA0;->a:LjA0;

    check-cast p1, Ljava/lang/String;

    const v1, 0x7f130623

    const/4 v2, 0x2

    const v3, 0x7f13054a

    .line 1
    invoke-virtual {v0, v3, p1, v1, v2}, LjA0;->a(ILjava/lang/String;II)V

    return-void
.end method
