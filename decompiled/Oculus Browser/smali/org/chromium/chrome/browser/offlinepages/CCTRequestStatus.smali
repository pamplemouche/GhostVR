.class public Lorg/chromium/chrome/browser/offlinepages/CCTRequestStatus;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/String;)Lorg/chromium/chrome/browser/offlinepages/CCTRequestStatus;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/CCTRequestStatus;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/offlinepages/CCTRequestStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
