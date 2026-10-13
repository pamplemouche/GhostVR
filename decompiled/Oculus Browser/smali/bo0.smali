.class public final synthetic Lbo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Leo0;


# direct methods
.method public constructor <init>(Leo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo0;->a:Leo0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbo0;->a:Leo0;

    check-cast p1, Llo0;

    .line 1
    iput-object p1, v0, Leo0;->z:Llo0;

    .line 2
    invoke-virtual {v0}, Leo0;->b()V

    return-void
.end method
