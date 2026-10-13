.class public Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;
.super Ljava/lang/Object;
.source "MinidumpReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/util/MinidumpReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinidumpMarkers"
.end annotation


# instance fields
.field public endMarker:J

.field public startMarker:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;->startMarker:J

    .line 48
    iput-wide p3, p0, Lcom/facebook/acra/util/MinidumpReader$MinidumpMarkers;->endMarker:J

    .line 49
    return-void
.end method
