.class public final synthetic LIZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIZ0;->w:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LIZ0;->w:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, LJZ0;->a(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method
