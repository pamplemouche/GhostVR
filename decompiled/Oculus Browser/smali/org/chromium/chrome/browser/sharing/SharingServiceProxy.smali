.class public Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;

.field public static b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeviceInfoAndAppendToList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    new-instance p1, LZD0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LZD0;-><init>(LYD0;)V

    .line 2
    invoke-static {p3}, LuV0;->a(I)LuV0;

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onProxyCreated(J)V
    .locals 0

    .line 1
    sput-wide p0, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;->b:J

    return-void
.end method

.method public static onProxyDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    sput-wide v0, Lorg/chromium/chrome/browser/sharing/SharingServiceProxy;->b:J

    return-void
.end method
