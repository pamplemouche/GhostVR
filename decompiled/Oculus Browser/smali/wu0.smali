.class public Lwu0;
.super LlW;
.source "PG"


# direct methods
.method public constructor <init>(LBu0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LlW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
