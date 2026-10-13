.class public LFj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:J

.field public c:D

.field public d:[J

.field public e:Lorg/json/JSONObject;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;LGl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, LFj;->a:Z

    .line 3
    iput-wide p2, p0, LFj;->b:J

    .line 4
    iput-wide p4, p0, LFj;->c:D

    .line 5
    iput-object p6, p0, LFj;->d:[J

    .line 6
    iput-object p7, p0, LFj;->e:Lorg/json/JSONObject;

    .line 7
    iput-object p8, p0, LFj;->f:Ljava/lang/String;

    .line 8
    iput-object p9, p0, LFj;->g:Ljava/lang/String;

    return-void
.end method
