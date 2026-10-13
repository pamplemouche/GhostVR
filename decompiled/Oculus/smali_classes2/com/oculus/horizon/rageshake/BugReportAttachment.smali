.class public Lcom/oculus/horizon/rageshake/BugReportAttachment;
.super Ljava/lang/Object;
.source "BugReportAttachment.java"


# instance fields
.field public final outputStream:Ljava/io/OutputStream;

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportAttachment;->uri:Landroid/net/Uri;

    .line 19
    iput-object p2, p0, Lcom/oculus/horizon/rageshake/BugReportAttachment;->outputStream:Ljava/io/OutputStream;

    .line 20
    return-void
.end method
