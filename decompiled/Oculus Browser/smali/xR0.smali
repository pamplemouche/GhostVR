.class public final synthetic LxR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZT0;


# instance fields
.field public final a:Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LxR0;->a:Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, LxR0;->a:Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;

    .line 1
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/features/test_dummy/TestDummyActivity;->a(Z)V

    const/4 p1, 0x0

    throw p1
.end method
