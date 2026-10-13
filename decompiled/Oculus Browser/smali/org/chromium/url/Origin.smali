.class public Lorg/chromium/url/Origin;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqf1;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lqf1;->a(Ljava/nio/ByteBuffer;)Lqf1;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/url/Origin;->a:Lqf1;

    return-void
.end method

.method public static serialize(Lorg/chromium/url/Origin;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/url/Origin;->a:Lqf1;

    invoke-virtual {p0}, LT61;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
