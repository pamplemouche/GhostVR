.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;
.super Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConflictView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView<",
        "Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_FLAGS:I = 0x10011

.field private static final METADATA_FORMAT:Ljava/lang/String; = "<b>%s</b> <i>%s</i><br/>%s"


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    .line 130
    sget v0, Lcom/oculus/panelapp/anytimeui/R$layout;->cloud_storage_dialog_conflict:I

    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;I)V

    return-void
.end method

.method private appendDate(Ljava/lang/StringBuilder;IZJ)V
    .locals 3

    .line 169
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    .line 173
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    .line 174
    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_label_newer:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 p3, 0x1

    aput-object p2, v1, p3

    const/4 p2, 0x2

    .line 175
    invoke-direct {p0, p4, p5}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->getDateLine(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "<b>%s</b> <i>%s</i><br/>%s"

    .line 170
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getDateLine(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_text_last_updated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    .line 183
    invoke-virtual {v4}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long p1, p1, v5

    const v5, 0x10011

    invoke-static {v4, p1, p2, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_text_last_updated_unknown:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onInflated()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->mInflatedView:Landroid/view/View;

    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    return-void
.end method

.method public setConflictDates(JJ)V
    .locals 9

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_label_remote:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, v6

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->appendDate(Ljava/lang/StringBuilder;IZJ)V

    const-string v0, "<br/><br/>"

    .line 159
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_label_local:I

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v0, p0

    move-object v1, v6

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->appendDate(Ljava/lang/StringBuilder;IZJ)V

    .line 163
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->mInflatedView:Landroid/view/View;

    check-cast p1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setCalloutText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->mInflatedView:Landroid/view/View;

    check-cast p1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setCalloutGravity(I)V

    return-void
.end method
