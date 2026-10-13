.class public Landroidx/mediarouter/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "styleable"
.end annotation


# static fields
.field public static final MediaRouteButton:[I

.field public static final MediaRouteButton_android_minHeight:I = 0x1

.field public static final MediaRouteButton_android_minWidth:I = 0x0

.field public static final MediaRouteButton_externalRouteEnabledDrawable:I = 0x2

.field public static final MediaRouteButton_mediaRouteButtonTint:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013f
        0x1010140
        0x7f0400ea
        0x7f04017d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
