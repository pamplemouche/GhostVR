.class public Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;
.super LCb1;
.source "PG"


# instance fields
.field public C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

.field public D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

.field public E:Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;

.field public F:J

.field public G:J

.field public H:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LCb1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, LBb1;

    invoke-direct {p1}, LBb1;-><init>()V

    new-instance p2, LDb1;

    new-instance v0, LAb1;

    invoke-direct {v0}, LAb1;-><init>()V

    invoke-direct {p2, v0}, LDb1;-><init>(Lzb1;)V

    .line 3
    iput-object p1, p0, LCb1;->w:Lzb1;

    .line 4
    iput-object p2, p0, LCb1;->x:Lzb1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->F:J

    .line 2
    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->G:J

    .line 3
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a(JJ)V

    .line 5
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a(JJ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a(JJ)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a()J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0xc

    mul-long v0, v0, v4

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    const-wide/32 v4, 0x100000

    .line 4
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 6
    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->H:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 7
    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->H:J

    .line 8
    iget-object v4, p0, LCb1;->x:Lzb1;

    invoke-interface {v4, v2, v3, v0, v1}, Lzb1;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->b()V

    .line 10
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->b()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0300

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    const v0, 0x7f0b00e0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    .line 4
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->C:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v1, p0, LCb1;->w:Lzb1;

    iget-object v2, p0, LCb1;->x:Lzb1;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a(Lzb1;Lzb1;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/ChartDataUsageView;->D:Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;

    iget-object v1, p0, LCb1;->w:Lzb1;

    iget-object v2, p0, LCb1;->x:Lzb1;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/ChartNetworkSeriesView;->a(Lzb1;Lzb1;)V

    return-void
.end method
